.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDAgentPackageStateReceiver"
.end annotation


# instance fields
.field private final BRTAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-class p1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    const-string v2, "Handling \'com.sec.enterprise.knox.shareddevice\'!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SD Agent added!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "enterprise_shared_device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Broadcast to SD Agent!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.enterprise.knox.shareddevice.enable"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SD_INSTALLER_PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.KNOX_SD_ONESDK_INTERNAL"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$700(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$800(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I

    :cond_1
    goto/16 :goto_2

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SD Agent removed!"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$900(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v4, "SHAREDDEVICE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1002(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Lcom/samsung/android/knox/license/LicenseInfo;)[Lcom/samsung/android/knox/license/LicenseInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    const v5, 0x7fffffff

    invoke-static {v4, v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1200(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1302(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z

    invoke-static {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1402(Z)Z

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "shared_device_status"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sd_password_view"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_2

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' not handled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not going to handle \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
