#include "BattlePayPackets.h"

#include "WorldSession.h"

void WorldSession::HandleBattlepayGetProductListQuery(WorldPacket& p_RecvData)
{
    {
        WorldPackets::BattlePay::ClientBattlePayGetDistributionListResponse ClientBattlePayGetDistributionListResponse;
        SendPacket(ClientBattlePayGetDistributionListResponse.Write());
    }
    WorldPackets::BattlePay::ClientBattlePayGetProductListResponse ClientBattlePayGetProductListResponse;

    ClientBattlePayGetProductListResponse.CurrencyID = 0;
    ClientBattlePayGetProductListResponse.Result = 0;

    SendPacket(ClientBattlePayGetProductListResponse.Write());
}

void WorldSession::HandleBattlepayGetPurchaseList(WorldPacket& p_RecvData)
{

}

void WorldSession::HandleBattlePayStartPurchase(WorldPackets::BattlePay::UserClientBattlePayStartPurchase& ClientBattlePayStartPurchase)
{

}

void WorldSession::HandleBattlePayConfirmPurchase(WorldPackets::BattlePay::UserClientBattlePayConfirmPurchaseResponse& ClientBattlePayConfirmPurchaseResponse)
{

}
