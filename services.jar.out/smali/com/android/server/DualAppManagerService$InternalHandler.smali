.class Lcom/android/server/DualAppManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# static fields
.field static final MSG_NOTIFY_BADGE_ADD:I = 0x2

.field static final MSG_NOTIFY_BADGE_REMOVE:I = 0x3

.field static final MSG_NOTIFY_LAUNCHER_CHANGE:I = 0x1

.field static final MSG_UPDATE_USAGE_INFO:I = 0x5

.field static final MSG_UPDATE_WHITELIST_INFO:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "DualAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage() START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateDAUsage()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateWhitelistPackages()V

    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateInstalledWhitelistPackages()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$200()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->access$100(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.da.daagent"

    const-string v2, "com.samsung.android.da.daagent.service.SwitchLauncherService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "defaultLauncher"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "DualAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage() END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
