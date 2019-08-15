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

#ifndef PlayerStorage_h__
#define PlayerStorage_h__

#include "Common.h"

class Player;

typedef std::map<uint32, int32> StorageEntryByKey;

class TC_GAME_API PlayerStorage
{
public:
    PlayerStorage(Player* player) : _owner(player) { };

    bool const IsEntryExists(uint32 key);
    int32 const GetEntry(uint32 key);
    void SetEntry(uint32 key, int32 value, uint32 timeMs = 0);

    bool ClearEntry(uint32 key) { return _container.erase(key) ? true : false; }
    void Clear() { _container.clear(); };

protected:
    Player* _owner;
    StorageEntryByKey _container;
};

#endif // PlayerStorage_h__