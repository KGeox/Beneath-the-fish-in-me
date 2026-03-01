function die()
{
    room_restart();
}

function take_damage(amount)
{
    if (!can_take_damage) return;

    hp -= amount;

    if (hp <= 0)
    {
        hp = 0;
        die();
    }

    can_take_damage = false;
    invincible = true;
    invincible_timer = invincible_duration;
}

