from behave import *

from ninja import AlliedNinja, EnemyNinja


@given('everything from here on is happening In the Ninja World')
def start(context):
    context.allied_ninjas = []
    context.enemy_ninjas = []


@given('"{name}" is an Allied Ninja "{rank}" with "{experience}" Experience, he is also "{mission}" and "{energy}"')
def create_allied_ninja(context, name, rank, experience, mission, energy):
    context.allied_ninjas.append(AlliedNinja(name, rank, experience, energy, mission))


@given('"{name}" is an Enemy Ninja "{rank}" with "{experience}" Experience, he is also "{energy}" and "{mood}"')
def create_enemy_ninja(context, name, rank, experience, energy, mood):
    context.enemy_ninjas.append(EnemyNinja(name, rank, experience, energy, mood))


@when('"{allied_ninja_name}" Allied Ninja "{action}" "{enemy_ninja_name}" Enemy Ninja')
def ninja_action(context, allied_ninja_name, action, enemy_ninja_name):
    allied_ninja_names = [allied_ninja.name.lower() for allied_ninja in context.allied_ninjas]
    assert allied_ninja_name.lower() in allied_ninja_names, f'{allied_ninja_name} does not exist in the Allied Ninja Group'

    enemy_ninja_names = [enemy_ninja.name.lower() for enemy_ninja in context.enemy_ninjas]
    assert enemy_ninja_name.lower() in enemy_ninja_names, f'{enemy_ninja_name} does not exist in the Enemy Ninja Group'

    allied_ninja = None
    for ninja in context.allied_ninjas:
        if ninja.name.lower() == allied_ninja_name.lower():
            allied_ninja = ninja
            break
    assert allied_ninja is not None, 'Error'

    enemy_ninja = None
    for ninja in context.enemy_ninjas:
        if ninja.name.lower() == enemy_ninja_name.lower():
            enemy_ninja = ninja
            break
    assert enemy_ninja is not None, 'Error'

    if action.lower() == 'encounters':
        allied_ninja.encounters(enemy_ninja)
    elif action.lower() == 'fights':
        assert allied_ninja.action == 'Fight', f'{allied_ninja_name} should not fight {enemy_ninja}'
        allied_ninja.fights(enemy_ninja)
    elif action.lower() == 'runs from':
        assert allied_ninja.action == 'Run from', f'{allied_ninja_name} should not run from {enemy_ninja}'
        allied_ninja.runs_from(enemy_ninja)
    elif action.lower() == 'ignores':
        assert allied_ninja.action == 'Ignore', f'{allied_ninja_name} should not ignore {enemy_ninja}'
    else:
        raise Exception('Not implemented yet.')


@then('"{allied_ninja_name}" Allied Ninja will "{state}"')
def ninja_state(context, allied_ninja_name, state):
    allied_ninja_names = [allied_ninja.name.lower() for allied_ninja in context.allied_ninjas]
    assert allied_ninja_name.lower() in allied_ninja_names, f'{allied_ninja_name} does not exist in the Allied Ninja Group'

    allied_ninja = None
    for ninja in context.allied_ninjas:
        if ninja.name.lower() == allied_ninja_name.lower():
            allied_ninja = ninja
            break
    assert allied_ninja is not None, 'Error'

    if state.lower() == 'die':
        assert allied_ninja.alive is False, f'{allied_ninja_name} should live'
    elif state.lower() == 'live':
        assert allied_ninja.alive is True, f'{allied_ninja_name} should die'
    elif state.lower() == 'kill':
        assert allied_ninja.alive is True and allied_ninja.action.lower() == 'fight', f'{allied_ninja_name} should not kill'
    elif state.lower() == 'enjoy the rest of her day':
        assert allied_ninja.action == 'Ignore', f'{allied_ninja_name} should not enjoy the rest of her day'
    else:
        raise Exception('Not implemented yet.')
