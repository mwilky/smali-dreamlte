.class Lcom/android/server/UiModeManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_10

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "UiModeManagerService"

    const-string v2, "context.getResources() null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_night_theme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_night_theme_scheduled_type"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "display_night_theme_scheduled"

    if-lez v4, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v3

    goto :goto_3

    :sswitch_1
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x4

    goto :goto_3

    :sswitch_2
    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x5

    goto :goto_3

    :sswitch_3
    const-string v8, "com.android.server.UiModeManagerService.NIGHT_THEME_SLEEP"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x3

    goto :goto_3

    :sswitch_4
    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v2

    goto :goto_3

    :sswitch_5
    const-string v8, "com.android.server.UiModeManagerService.NIGHT_THEME_WAKEUP"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v9

    :cond_5
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v5, :cond_6

    if-ne v4, v9, :cond_6

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_4

    :cond_6
    if-eqz v5, :cond_f

    if-ne v4, v2, :cond_f

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$3000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto/16 :goto_4

    :pswitch_1
    if-eqz v5, :cond_f

    if-ne v4, v9, :cond_f

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p1, v2, v2}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto/16 :goto_4

    :pswitch_2
    if-nez v1, :cond_f

    if-eqz v5, :cond_f

    if-ne v4, v9, :cond_f

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p1, v2, v9}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto/16 :goto_4

    :pswitch_3
    if-ne v4, v2, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "location_providers_allowed"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "display_night_theme"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v9, "display_night_theme"

    invoke-static {v8, p1, v9, v3}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v8, p1, v3, v2}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v8, "display_night_theme_scheduled"

    invoke-static {v2, p1, v8, v3}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$3200(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    :cond_a
    goto :goto_4

    :pswitch_4
    if-eqz v5, :cond_d

    if-ne v4, v9, :cond_b

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2800(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$NightModeTimer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService$NightModeTimer;->access$2900(Lcom/android/server/UiModeManagerService$NightModeTimer;)V

    goto :goto_4

    :cond_b
    if-ne v4, v2, :cond_f

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->access$3000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1, v3, v3}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v7, "display_night_theme_scheduled"

    invoke-static {v2, p1, v7, v3}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v7, "display_night_theme"

    invoke-static {v2, p1, v7, v3}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :cond_d
    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1, v3, v9}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    goto :goto_4

    :cond_e
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, p1, v3, v2}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    nop

    :cond_f
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_6

    :cond_10
    :goto_5
    const-string v1, "UiModeManagerService"

    const-string/jumbo v2, "onReceive() intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x596e4a14 -> :sswitch_5
        -0x469f6743 -> :sswitch_4
        -0x2c604d96 -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
