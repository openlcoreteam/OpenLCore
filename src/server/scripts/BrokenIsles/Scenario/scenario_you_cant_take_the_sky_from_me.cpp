/*scenario_you_cant_take_the_sky_from_me*/
struct scenario_you_cant_take_the_sky_from_me : public InstanceScript
{
    scenario_you_cant_take_the_sky_from_me(InstanceMap* map) : InstanceScript(map) { }

};

void AddSC_scenario_you_cant_take_the_sky_from_me()
{
    RegisterInstanceScript(scenario_you_cant_take_the_sky_from_me, 1731);
}
