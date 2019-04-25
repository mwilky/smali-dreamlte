.class public Lcom/android/systemui/globalactions/presentation/view/DefaultResourceFactory;
.super Ljava/lang/Object;
.source "DefaultResourceFactory.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceID(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "sec_global_actions_wrapped"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "tw_ic_do_restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v0, "sec_global_actions_description_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "sec_global_actions_icon_ripple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "device_ic_clover_view_cover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "device_ic_dark_theme_samsung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "sec_global_actions_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v0, "tw_ic_do_lockdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v0, "tw_ic_do_safemode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v0, "tw_ic_do_emergencymode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "sec_global_actions_bottomview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "sec_global_actions_bottomtextview_bottom_margin_landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "device_ic_white_theme_samsung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v0, "tw_ic_do_mobiledata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v0, "sec_global_actions_icon_label_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v0, "sec_global_actions_item_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v0, "sec_global_actions_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v0, "sec_global_actions_label"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v0, "tw_ic_do_poweroff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v0, "sec_global_actions_icon_bg_focused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v0, "sec_global_actions_bottomtextview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_15
    const-string/jumbo v0, "sec_global_actions_bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_16
    const-string/jumbo v0, "sec_global_actions_bottomtextview_bottom_margin_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_17
    const-string/jumbo v0, "sec_global_actions_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_18
    const-string/jumbo v0, "sec_global_actions_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_19
    const-string/jumbo v0, "sec_global_actions_bottompetview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v0, "sec_global_actions_force_restart_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v0, "sec_global_actions_item_list_land"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1c
    const-string/jumbo v0, "tw_ic_do_bikemode_square"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v0, "sec_global_actions_confirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const v0, 0x105022c

    return v0

    :pswitch_1
    const v0, 0x105022d

    return v0

    :pswitch_2
    const v0, 0x10e0130

    return v0

    :pswitch_3
    const v0, 0x1080810

    return v0

    :pswitch_4
    const v0, 0x108080f

    return v0

    :pswitch_5
    const v0, 0x1080b4a

    return v0

    :pswitch_6
    const v0, 0x1080b52

    return v0

    :pswitch_7
    const v0, 0x1080b51

    return v0

    :pswitch_8
    const v0, 0x1080b4e

    return v0

    :pswitch_9
    const v0, 0x1080b57

    return v0

    :pswitch_a
    const v0, 0x1080b5c

    return v0

    :pswitch_b
    const v0, 0x1080b53

    return v0

    :pswitch_c
    const v0, 0x10802b5

    return v0

    :pswitch_d
    const v0, 0x10802b3

    return v0

    :pswitch_e
    const v0, 0x10802b2

    return v0

    :pswitch_f
    const v0, 0x10204a0

    return v0

    :pswitch_10
    const v0, 0x102049f

    return v0

    :pswitch_11
    const v0, 0x10204a4

    return v0

    :pswitch_12
    const v0, 0x10204a1

    return v0

    :pswitch_13
    const v0, 0x102049e

    return v0

    :pswitch_14
    const v0, 0x10204a5

    return v0

    :pswitch_15
    const v0, 0x1090100

    return v0

    :pswitch_16
    const v0, 0x10900fe

    return v0

    :pswitch_17
    const v0, 0x10900fd

    return v0

    :pswitch_18
    const v0, 0x10900ff

    return v0

    :pswitch_19
    const v0, 0x1090101

    return v0

    :pswitch_1a
    const v0, 0x102049d

    return v0

    :pswitch_1b
    const v0, 0x102049b

    return v0

    :pswitch_1c
    const v0, 0x10204a3

    return v0

    :pswitch_1d
    const v0, 0x10204a2

    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f247f9b -> :sswitch_1d
        -0x76941473 -> :sswitch_1c
        -0x739b1110 -> :sswitch_1b
        -0x7256dbff -> :sswitch_1a
        -0x62cd7a77 -> :sswitch_19
        -0x5c829f57 -> :sswitch_18
        -0x5c8260bd -> :sswitch_17
        -0x542f7736 -> :sswitch_16
        -0x519e8da5 -> :sswitch_15
        -0x509ff753 -> :sswitch_14
        -0x416fb52d -> :sswitch_13
        -0x367d66eb -> :sswitch_12
        -0x33a81f3c -> :sswitch_11
        -0x333cd99f -> :sswitch_10
        -0x331023e6 -> :sswitch_f
        -0x32c5319a -> :sswitch_e
        -0x264658a9 -> :sswitch_d
        -0x223350ae -> :sswitch_c
        -0x1ff93494 -> :sswitch_b
        -0x1e6df880 -> :sswitch_a
        -0x13207937 -> :sswitch_9
        -0x75c685 -> :sswitch_8
        0x82b2b18 -> :sswitch_7
        0xcf149cc -> :sswitch_6
        0x130ab897 -> :sswitch_5
        0x303ab4c3 -> :sswitch_4
        0x5451f286 -> :sswitch_3
        0x5501f3c0 -> :sswitch_2
        0x5f0a49e4 -> :sswitch_1
        0x78c0b255 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
