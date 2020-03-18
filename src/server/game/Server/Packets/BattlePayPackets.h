#pragma once

/// Game
#include "BattlePayMgr.hpp"
#include "Packet.h"

namespace WorldPackets
{
    namespace BattlePay
    {
        class ClientBattlePayGetProductListResponse final : public ServerPacket
        {
        public:
            ClientBattlePayGetProductListResponse() : ServerPacket(SMSG_BATTLE_PAY_GET_PRODUCT_LIST_RESPONSE) { }

            WorldPacket const* Write() override;

            Products                             m_Products;
            uint32                               Result;                                       ///< Offset 0x0018 Type _MJVTBL_UINT32
            Groups                               m_Groups;
            ShopEntries                          m_ShopEntries;
            uint32                               CurrencyID;                                   ///< Offset 0x0050 Type _MJVTBL_UINT32
        };

        class ClientBattlePayStartPurchaseResponse final : public ServerPacket
        {
        public:
            ClientBattlePayStartPurchaseResponse() : ServerPacket(SMSG_BATTLE_PAY_START_PURCHASE_RESPONSE, 4 + 8 + 4) { }

            WorldPacket const* Write() override;

            uint64 PurchaseID;            ///< Offset 0x0000 Type _MJVTBL_UINT64
            uint32 PurchaseResult;        ///< Offset 0x0008 Type _MJVTBL_UINT32
            uint32 ClientToken;           ///< Offset 0x000C Type _MJVTBL_UINT32
        };

        class ClientBattlePayPurchaseUpdate final : public ServerPacket
        {
        public:
            ClientBattlePayPurchaseUpdate() : ServerPacket(SMSG_BATTLE_PAY_PURCHASE_UPDATE) { }

            WorldPacket const* Write() override;
        };

        class ClientBattlePayConfirmPurchase final : public ServerPacket
        {
        public:
            ClientBattlePayConfirmPurchase() : ServerPacket(SMSG_BATTLE_PAY_CONFIRM_PURCHASE, 8 + 4 + 8) { }

            WorldPacket const* Write() override;

            uint64 CurrentPriceFixedPoint;        ///< Offset 0x0000 Type _MJVTBL_UINT64
            uint64 PurchaseID;                    ///< Offset 0x0008 Type _MJVTBL_UINT64
            uint32 ServerToken;                   ///< Offset 0x0010 Type _MJVTBL_UINT32
        };

        class ClientBattlePayGetPurchaseListResponse final : public ServerPacket
        {
        public:
            ClientBattlePayGetPurchaseListResponse() : ServerPacket(SMSG_BATTLE_PAY_GET_PURCHASE_LIST_RESPONSE) { }

            WorldPacket const* Write() override;
        };

        class ClientBattlePayGetDistributionListResponse final : public ServerPacket
        {
        public:
            ClientBattlePayGetDistributionListResponse() : ServerPacket(SMSG_BATTLE_PAY_GET_DISTRIBUTION_LIST_RESPONSE) { }

            WorldPacket const* Write() override;
        };

        class ClientBattlePayAckFailed final : public ServerPacket
        {
        public:
            ClientBattlePayAckFailed() : ServerPacket(SMSG_BATTLE_PAY_ACK_FAILED, 4 + 4 + 4 + 8) { }

            WorldPacket const* Write() override;

            uint64 PurchaseID;         ///< Offset 0x0000 Type _MJVTBL_UINT64
            uint32 Status;             ///< Offset 0x0008 Type _MJVTBL_UINT32
            uint32 Result;             ///< Offset 0x000C Type _MJVTBL_UINT32
            uint32 ServerToken;        ///< Offset 0x0010 Type _MJVTBL_UINT32
        };

        class ClientBattlePayDeliveryStarted final : public ServerPacket
        {
        public:
            ClientBattlePayDeliveryStarted() : ServerPacket(SMSG_BATTLE_PAY_DELIVERY_STARTED, 8) { }

            WorldPacket const* Write() override;

            uint64 DistributionID;        ///< Offset 0x0000 Type _MJVTBL_UINT64
        };

        class ClientBattlePayDeliveryEnded final : public ServerPacket
        {
        public:
            ClientBattlePayDeliveryEnded() : ServerPacket(SMSG_BATTLE_PAY_DELIVERY_ENDED) { }

            WorldPacket const* Write() override;

            uint64 DistributionID;        ///< Offset 0x0000 Type _MJVTBL_UINT64
            std::vector<uint32> Items;
        };

        class ClientBattlePayStartDistributionAssignToTargetResponse final : public ServerPacket
        {
        public:
            ClientBattlePayStartDistributionAssignToTargetResponse() : ServerPacket(SMSG_BATTLE_PAY_START_DISTRIBUTION_ASSIGN_TO_TARGET_RESPONSE, 8+4+4) { }

            WorldPacket const* Write() override;

            uint64 DistributionID;        ///< Offset 0x0000 Type _MJVTBL_UINT64
            uint32 ClientToken;           ///< Offset 0x0008 Type _MJVTBL_UINT32
            uint32 Result;                ///< Offset 0x000C Type _MJVTBL_UINT32
        };

        class ClientBattlePayDistributionUpdate final : public ServerPacket
        {
        public:
            ClientBattlePayDistributionUpdate() : ServerPacket(SMSG_BATTLE_PAY_DISTRIBUTION_UPDATE) { }

            WorldPacket const* Write() override;
        };

        ///<CMSGs
        class UserClientBattlePayStartPurchase final : public ClientPacket
        {
        public:
            UserClientBattlePayStartPurchase(WorldPacket&& packet) : ClientPacket(CMSG_BATTLE_PAY_START_PURCHASE, std::move(packet)) { }

            void Read() override;

            ObjectGuid TargetCharacter;

            uint32 ProductID;
            uint32 ClientToken;
        };

        class UserClientBattlePayConfirmPurchaseResponse final : public ClientPacket
        {
        public:
            UserClientBattlePayConfirmPurchaseResponse(WorldPacket&& packet) : ClientPacket(CMSG_BATTLE_PAY_CONFIRM_PURCHASE_RESPONSE, std::move(packet)) { }

            void Read() override;

            bool ConfirmPurchase;
            uint32 ServerToken;
            uint64 ClientCurrentPriceFixedPoint;
        };
    }
}
