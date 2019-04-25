.class Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "received ACTION_USER_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init mGlobalAppLRU"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/am/Pageboost;->access$202(Z)Z

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_7
    :goto_1
    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_8
    const-string v2, "apps"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v3}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    array-length v6, v2

    const/4 v7, 0x2

    if-ge v5, v6, :cond_d

    aget-object v6, v2, v5

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    aget-object v6, v2, v5

    const-string v8, "/"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v4

    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v3, v7, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_c
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_5
    nop

    :cond_e
    :goto_6
    return-void
.end method
