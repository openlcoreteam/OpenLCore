/*
* Copyright (C) 2008-2018 TrinityCore <http://www.trinitycore.org/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include "PlayerStorage.h"
#include "Player.h"

class ClearEntryDelayed : public BasicEvent
{
public:
    ClearEntryDelayed(PlayerStorage* storage, int32 const key) : _storage(storage), _key(key) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        if (_storage)
            _storage->ClearEntry(_key);
        return true;
    }

private:
    PlayerStorage* _storage;
    int32 const _key;
};

bool const PlayerStorage::IsEntryExists(uint32 key)
{
    auto search = _container.find(key);
    if (search != _container.end())
        return true;
    return false;
}

int32 const PlayerStorage::GetEntry(uint32 key)
{
    auto search = _container.find(key);
    if (search != _container.end())
        return search->second;
    return 0;
}

void PlayerStorage::SetEntry(uint32 key, int32 value, uint32 timeMs /*= 0*/)
{
    _container[key] = value;
    if (timeMs && _owner)
        _owner->m_Events.AddEvent(new ClearEntryDelayed(this, key), _owner->m_Events.CalculateTime(timeMs));
}