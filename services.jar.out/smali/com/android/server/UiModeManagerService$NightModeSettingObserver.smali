.class Lcom/android/server/UiModeManagerService$NightModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightModeSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/UiModeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/UiModeManagerService$NightModeSettingObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->observe()V

    return-void
.end method

.method private observe()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_night_theme"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_scheduled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_scheduled_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_on_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "display_night_theme_off_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSetting(Landroid/net/Uri;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "display_night_theme_scheduled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_night_theme_scheduled_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "display_night_theme"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "display_night_theme_on_time"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "display_night_theme_scheduled"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "display_night_theme_off_time"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v4

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "display_night_theme_scheduled_type"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_4
    const-string/jumbo v8, "display_night_theme"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v9

    :cond_2
    :goto_2
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-ne v5, v9, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$3302(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_3
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_3

    :cond_4
    if-ne v5, v4, :cond_c

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3200(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/server/UiModeManagerService;->access$3700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3602(Lcom/android/server/UiModeManagerService;Z)Z

    goto/16 :goto_3

    :pswitch_1
    if-eqz v2, :cond_7

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v6}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3400(Lcom/android/server/UiModeManagerService;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v4}, Lcom/android/server/UiModeManagerService;->access$3302(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_5
    if-ne v5, v9, :cond_6

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_3

    :cond_6
    if-ne v5, v4, :cond_c

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/server/UiModeManagerService;->access$3000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3500(Lcom/android/server/UiModeManagerService;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v3}, Lcom/android/server/UiModeManagerService;->access$3302(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_8
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$3600(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->access$3700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v3}, Lcom/android/server/UiModeManagerService;->access$3602(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_9
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz v6, :cond_a

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "display_night_theme"

    invoke-static {v7, v8, v9, v3}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v3, v4}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_b
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$1402(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3200(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto :goto_3

    :pswitch_2
    goto :goto_3

    :pswitch_3
    if-eqz v2, :cond_c

    if-ne v5, v9, :cond_c

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    :cond_c
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609dd11b -> :sswitch_4
        -0x16481bda -> :sswitch_3
        0x1e265fb7 -> :sswitch_2
        0x33414fd3 -> :sswitch_1
        0x4814f1d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/UiModeManagerService$NightModeSettingObserver;->updateSetting(Landroid/net/Uri;)V

    return-void
.end method
