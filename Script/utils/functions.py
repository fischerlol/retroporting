import config
import glob
import distutils.dir_util
import shutil
import os
import stat
import py7zr
from git import Repo
from tqdm import tqdm
from rich import print as printc
from os import system, path


def print_addition(self):
    for files in glob.glob(self + '/**/*', recursive=True):
        if files.endswith('.m2') or files.endswith('.skin') or files.endswith('.blp') or files.endswith('.dbc'):
            normalized_path = os.path.normpath(files)
            path_components = normalized_path.split(os.sep)
            printc('[green][+][/green] ', path_components[len(path_components) - 1])


def print_deletion(self):
    for files in glob.glob(self + '/**/*', recursive=True):
        if files.endswith('.m2') or files.endswith('.skin') or files.endswith('.blp'):
            normalized_path = os.path.normpath(files)
            path_components = normalized_path.split(os.sep)
            printc('[red][-][/red] ', path_components[len(path_components) - 1])
    print()


def delete_files(self):
    os.chdir(self)
    for file in os.listdir(self):
        if file == '.gitignore':
            continue
        shutil.rmtree(file)


def delete_git(self):
    for root, directories, files in os.walk(self):
        for directory in directories:
            os.chmod(path.join(root, directory), stat.S_IRWXU)
        for file in files:
            os.chmod(path.join(root, file), stat.S_IRWXU)
    shutil.rmtree(self)


def check_empty_patch(self):
    os.chdir(self)
    if not os.path.exists(self + '/patch-4.mpq'):
        printc('\n[red][!][/red] Patch does not exist, creating now')
        os.mkdir('patch-4.mpq')
        printc('[green][+][/green] Patch directory created')
        os.chdir(config.patch_path)
        os.mkdir('DBFilesClient')
        printc('[green][+][/green] DBFilesClient directory created\n')

    if not os.path.exists(self + '/patch-4.mpq/DBFilesClient'):
        printc('\n[red][!][/red] DBFilesClient does not exist within patch-4.mpq, creating now')
        os.chdir(config.patch_path)
        os.mkdir('DBFilesClient')
        printc('[green][+][/green] DBFilesClient directory created')


def check_empty_path(action: str):
    if action == 'one_add':
        if len(os.listdir(config.wow_export_path)) > 1:
            print('\nCopying files from wow.export to be converted: ')
            print_addition(config.wow_export_path)
        else:
            printc('\n[yellow][!][/yellow] Nothing to copy\n')

    if action == 'one_delete':
        if len(os.listdir(config.multi_converter_path_2)) > 0:
            print('\nDeleting old files from wow.export:')
            print_deletion(config.multi_converter_path_2)

    if action == 'two_add':
        if len(os.listdir(config.wow_export_helmet_path)) > 1:
            print('\nCopying files from wow.export.helmet to be converted:')
            print_addition(config.wow_export_helmet_path)
        else:
            printc('\n[yellow][!][/yellow] Nothing to copy from wow.export.helmet\n')

    if action == 'two_delete':
        if len(os.listdir(config.multi_converter_path_2)) > 0:
            print('\nDeleting old files from wow.export:')
            print_deletion(config.multi_converter_path_2)

    if action == 'four_add':
        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) > 1:
            print('\nCopying files from wow.export to patch folder:')
            print_addition(config.wow_export_path)
            print('\nCopying files from wow.export.helmet to patch folder:')
            print_addition(config.wow_export_helmet_path)
            print()

        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) == 1:
            print('\nCopying files from wow.export to patch folder: ')
            print_addition(config.wow_export_path)

        if len(os.listdir(config.wow_export_path)) == 1 and len(os.listdir(config.wow_export_helmet_path)) > 1:
            print('\nCopying files from wow.export.helmet to patch folder:')
            print_addition(config.wow_export_helmet_path)

        if len(os.listdir(config.headless_exporter_export_path)) >= 1:
            print('\nCopying exported dbc files to patch folder:')
            print_addition(config.headless_exporter_export_path)
            print()

    if action == 'five_delete':
        # false, false, false
        if len(os.listdir(config.wow_export_path)) == 1 and len(os.listdir(config.wow_export_helmet_path)) == 1 and len(
                os.listdir(config.multi_converter_path_2)) == 0:
            printc('\n[yellow][!][/yellow] Nothing to delete in wow.export')
            printc('[yellow][!][/yellow] Nothing to delete in wow.export.helmet')
            printc('[yellow][!][/yellow] Nothing to delete in multiconverter/wow.export\n')

        # false, true, false
        if len(os.listdir(config.wow_export_path)) == 1 and len(os.listdir(config.wow_export_helmet_path)) > 1 and \
                len(os.listdir(config.multi_converter_path_2)) == 0:
            printc('\n[yellow][!][/yellow] Nothing to delete in wow.export')
            print('\nDeleting files from wow.export.helmet:')
            print_deletion(config.wow_export_helmet_path)
            printc('[yellow][!][/yellow] Nothing to delete in multiconverter/wow.export\n')

        # false, true, true
        if len(os.listdir(config.wow_export_path)) == 1 and len(os.listdir(config.wow_export_helmet_path)) > 1 and \
                len(os.listdir(config.multi_converter_path_2)) >= 1:
            printc('\n[yellow][!][/yellow] Nothing to delete in wow.export')
            print('\nDeleting files from wow.export.helmet:')
            print_deletion(config.wow_export_helmet_path)
            print('Deleting files from multiconverter/wow.export:')
            print_deletion(config.multi_converter_path_2)

        # true, false, false
        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) == 1 and \
                len(os.listdir(config.multi_converter_path_2)) == 0:
            print('\nDeleting files from wow.export:')
            print_deletion(config.wow_export_path)
            printc('[yellow][!][/yellow] Nothing to delete in wow.export.helmet')
            printc('[yellow][!][/yellow] Nothing to delete in multiconverter/wow.export\n')

        # true, false, true
        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) == 1 and \
                len(os.listdir(config.multi_converter_path_2)) >= 1:
            print('\nDeleting files from wow.export:')
            print_deletion(config.wow_export_path)
            printc('[yellow][!][/yellow] Nothing to delete in wow.export.helmet\n')
            print('Deleting files from multiconverter/wow.export:')
            print_deletion(config.multi_converter_path_2)

        # true, true, false
        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) > 1 and \
                len(os.listdir(config.multi_converter_path_2)) == 0:
            print('\nDeleting files from wow.export:')
            print_deletion(config.wow_export_path)
            print('Deleting files from wow.export.helmet:')
            print_deletion(config.wow_export_helmet_path)
            printc('[yellow][!][/yellow] Nothing to delete in multiconverter/wow.export\n')

        # true, true, true
        if len(os.listdir(config.wow_export_path)) > 1 and len(os.listdir(config.wow_export_helmet_path)) > 1 and \
                len(os.listdir(config.multi_converter_path_2)) >= 1:
            print('\nDeleting files from wow.export:')
            print_deletion(config.wow_export_path)
            print('Deleting files from wow.export.helmet:')
            print_deletion(config.wow_export_helmet_path)
            print('Deleting files from multiconverter/wow.export:')
            print_deletion(config.multi_converter_path_2)


def copy_files(path1, path2):
    if os.path.exists(path2 + '/.git'):
        delete_git(path2 + '/.git')
    distutils.dir_util._path_created = {}
    distutils.dir_util.copy_tree(path1, path2)
    if os.path.exists(path2 + '/.gitignore'):
        if not path2 == config.patch_repo_3:
            os.remove(path2 + '/.gitignore')


def run_script(name, self, database):
    script = """mysql --login-path=local < %s %s""" % (self, database)
    printc('[green][+][/green] Executing SQL script file: ' + '[green]' + name + '[/green]')
    system(script)


def git_update(self):
    repo = Repo(self)
    printc('\n[green][+][/green] Updating git repository')
    repo.git.fetch()
    repo.git.submodule('update')


def git_clone(path1, path2):
    urls = ['https://github.com/fischerlol/patch.git']
    if not os.path.exists(path1 + '/patch'):
        printc('[green][+][/green] Cloning repo:')
        for url in tqdm(urls):
            Repo.clone_from(url, path1 + '/patch', branch='retroporting')
        repo = Repo(path1 + '/patch')
        repo.git.submodule('update', '--init', '--recursive')
    else:
        git_update(path2)


def unzip(self, file):
    os.chdir(self)
    normalized_path = os.path.normpath(file)
    path_components = normalized_path.split('.7z')
    if not os.path.exists(self + '/' + path_components[0]):
        printc('[green][+][/green] Unzipping', file)
        with py7zr.SevenZipFile(file, mode='r') as z:
            z.extractall(self)
    else:
        printc('[yellow][!][/yellow] Directory', path_components[0], 'already exists')
