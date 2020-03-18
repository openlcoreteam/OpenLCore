/// Game
#include "BattlePayPackets.h"

namespace WorldPackets
{
    namespace BattlePay
    {
        /// SMSG_BATTLE_PAY_ACK_FAILED - 7.3.5 Valid
        WorldPacket const* ClientBattlePayAckFailed::Write()
        {
            _worldPacket << int64(PurchaseID);
            _worldPacket << int32(Status);
            _worldPacket << int32(Result);
            _worldPacket << int32(ServerToken);

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayDeliveryStarted::Write()
        {
            _worldPacket << int64(DistributionID);

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayDeliveryEnded::Write()
        {
            _worldPacket << uint64(DistributionID);

            _worldPacket << uint32(Items.size());

            for (uint32 const& l_ItemId : Items)
                _worldPacket << l_ItemId;

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayStartDistributionAssignToTargetResponse::Write()
        {
            _worldPacket << DistributionID;
            _worldPacket << ClientToken;
            _worldPacket << Result;

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayGetPurchaseListResponse::Write()
        {
            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayPurchaseUpdate::Write()
        {
            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayStartPurchaseResponse::Write()
        {
            _worldPacket << PurchaseID;                       ///< Purchase ID [2]
            _worldPacket << PurchaseResult;                   ///< Result 6
            _worldPacket << ClientToken;                      ///< Client Token 7

            return &_worldPacket;
        }

        ByteBuffer& operator<<(ByteBuffer& p_Data, JamBattlepayDisplayInfo const& p_DisplayInfo)
        {
            p_Data.FlushBits();

            p_Data.WriteBit(p_DisplayInfo.CreatureDisplayInfoID.is_initialized());
            p_Data.WriteBit(p_DisplayInfo.FileDataID.is_initialized());

            p_Data.WriteBits(p_DisplayInfo.Name1.size(), 10);
            p_Data.WriteBits(p_DisplayInfo.Name2.size(), 10);
            p_Data.WriteBits(p_DisplayInfo.Name3.size(), 13);

            p_Data.WriteBit(p_DisplayInfo.Unk2418.is_initialized());
            p_Data.WriteBit(p_DisplayInfo.Unk2420.is_initialized());
            p_Data.WriteBit(p_DisplayInfo.Unk2430.is_initialized());
            p_Data.WriteBit(p_DisplayInfo.Unk2428.is_initialized());

            p_Data.FlushBits();

            p_Data << uint32(p_DisplayInfo.Extra.size());

            if (p_DisplayInfo.CreatureDisplayInfoID.is_initialized())
                p_Data << p_DisplayInfo.CreatureDisplayInfoID.get();

            if (p_DisplayInfo.FileDataID.is_initialized())
                p_Data << p_DisplayInfo.FileDataID.get();

            p_Data.WriteString(p_DisplayInfo.Name1);
            p_Data.WriteString(p_DisplayInfo.Name2);
            p_Data.WriteString(p_DisplayInfo.Name3);
            p_Data.WriteString(p_DisplayInfo.Name4);

            if (p_DisplayInfo.Unk2418.is_initialized())
                p_Data << p_DisplayInfo.Unk2418.get();

            if (p_DisplayInfo.Unk2420.is_initialized())
                p_Data << p_DisplayInfo.Unk2420.get();

            if (p_DisplayInfo.Unk2428.is_initialized())
                p_Data << p_DisplayInfo.Unk2428.get();

            if (p_DisplayInfo.Unk2430.is_initialized())
                p_Data << p_DisplayInfo.Unk2430.get();

            for (auto const& l_Extra : p_DisplayInfo.Extra)
            {
                p_Data.WriteBits(l_Extra.UnkString.size(), 8);

                p_Data.FlushBits();

                p_Data << l_Extra.UnkInt204;
                p_Data << l_Extra.UnkInt208;
                p_Data.WriteString(l_Extra.UnkString);
            }

            return p_Data;
        }

        /// SMSG_BATTLE_PAY_GET_PRODUCT_LIST_RESPONSE - 7.3.5 Valid
        WorldPacket const* ClientBattlePayGetProductListResponse::Write()
        {
            _worldPacket << Result;
            _worldPacket << CurrencyID;

            _worldPacket << uint32(m_Products.size());
            _worldPacket << uint32(m_Groups.size());
            _worldPacket << uint32(m_ShopEntries.size());

            _worldPacket << uint32(0); ///< BattlepayDisplayCard counter

            for (auto const& l_Product : m_Products)
            {
                _worldPacket << l_Product.ProductID;

                _worldPacket << l_Product.NormalPriceFixedPoint;
                _worldPacket << l_Product.CurrentPriceFixedPoint;

                _worldPacket << uint32(l_Product.ChoiceType > 0 ? 1 : 0);
                _worldPacket << l_Product.Flags;
                _worldPacket << uint32(0);  ///< Unk24A0 Legion 7.3.5

                if (l_Product.ChoiceType)
                    _worldPacket << uint32(l_Product.ChoiceType);

                ///_worldPacket << l_Product.Type;

                _worldPacket.FlushBits();

                _worldPacket.WriteBit(l_Product.DisplayInfo.is_initialized());

                if (l_Product.DisplayInfo.is_initialized())
                    _worldPacket << l_Product.DisplayInfo.get();
            }

            for (auto const& l_Group : m_Groups)
            {
                _worldPacket << l_Group.GroupID;
                _worldPacket << l_Group.IconFileDataID;
                _worldPacket << l_Group.DisplayType;
                _worldPacket << l_Group.Ordering;

                _worldPacket.FlushBits();

                _worldPacket.WriteBits(l_Group.Name.size(), 8);
                _worldPacket.WriteString(l_Group.Name);
            }

            for (auto const& l_ShopEntry : m_ShopEntries)
            {
                _worldPacket << l_ShopEntry.EntryID;
                _worldPacket << l_ShopEntry.GroupID;
                _worldPacket << l_ShopEntry.ProductID;
                _worldPacket << l_ShopEntry.Ordering;
                _worldPacket << l_ShopEntry.Flags;
                _worldPacket << l_ShopEntry.BannerType;
            }

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayConfirmPurchase::Write()
        {
            _worldPacket << CurrentPriceFixedPoint;
            _worldPacket << PurchaseID;
            _worldPacket << ServerToken;

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayGetDistributionListResponse::Write()
        {
            _worldPacket << uint32(0);
            _worldPacket << uint32(0);

            return &_worldPacket;
        }

        WorldPacket const* ClientBattlePayDistributionUpdate::Write()
        {
            return &_worldPacket;
        }

        void UserClientBattlePayStartPurchase::Read()
        {
            _worldPacket >> ClientToken;
            _worldPacket >> ProductID;
            _worldPacket >> TargetCharacter;
        }

        void UserClientBattlePayConfirmPurchaseResponse::Read()
        {
            ConfirmPurchase = _worldPacket.ReadBit();

            _worldPacket >> ServerToken;
            _worldPacket >> ClientCurrentPriceFixedPoint;
        }

    }
}
