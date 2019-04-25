.class Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;
.super Ljava/lang/Object;
.source "AppStateBroadcasterA.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcasterA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerCallback"
.end annotation


# static fields
.field static final DATA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final DATA_PID:Ljava/lang/String; = "pid"

.field static final DATA_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field static final MSG_DISABLE_BROADCAST:I = 0x2

.field static final MSG_ENABLE_BROADCAST:I = 0x1

.field static final MSG_SEND_APP_EXIT:I = 0x6

.field static final MSG_SEND_APP_FOCUS_GAIN:I = 0x4

.field static final MSG_SEND_APP_START:I = 0x3

.field static final MSG_SET_APP_STOP_REASON:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppStateBroadcasterA$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "stop_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcasterA;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$600()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->addStopReason(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "stop_reason"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/am/AppStateBroadcasterA;->access$1100(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcasterA;->access$800(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$900()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "IQAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendApplicationFocusGain sent APP_STATE_FOCUS_LOSS for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOCUS_LOSS"

    invoke-static {v4, v5}, Lcom/android/server/am/AppStateBroadcasterA;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "FOCUS_GAIN"

    invoke-static {v3, v4}, Lcom/android/server/am/AppStateBroadcasterA;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$900()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "IQAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendApplicationFocusGain sent APP_STATE_FOCUS_GAIN for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", old focus package was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcasterA;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/AppStateBroadcasterA;->access$700(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcasterA;->access$302(Z)Z

    invoke-static {v2}, Lcom/android/server/am/AppStateBroadcasterA;->access$102(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :pswitch_6
    invoke-static {v2}, Lcom/android/server/am/AppStateBroadcasterA;->access$102(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$200()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->getRunningPackages(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/am/AppStateBroadcasterA;->access$302(Z)Z

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/am/AppStateBroadcasterA;->access$500(Landroid/content/Context;Ljava/util/Map;)V

    nop

    :cond_4
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
