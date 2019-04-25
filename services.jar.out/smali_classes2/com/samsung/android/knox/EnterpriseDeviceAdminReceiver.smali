.class public Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "EnterpriseDeviceAdminReceiver.java"


# instance fields
.field private mManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    goto :goto_0

    :cond_5
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v1, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminReceiver;->onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
