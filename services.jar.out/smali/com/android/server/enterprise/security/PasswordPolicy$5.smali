.class Lcom/android/server/enterprise/security/PasswordPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy$5;->getSendingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$500(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    :cond_1
    goto/16 :goto_3

    :cond_2
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$600(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    :cond_3
    goto/16 :goto_3

    :cond_4
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$700(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$800(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_3

    :cond_5
    const-string v5, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "PasswordPolicy"

    const-string v6, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "expiration"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v8, v5

    if-lez v5, :cond_6

    goto :goto_1

    :cond_6
    const-string v5, "PasswordPolicy"

    const-string v6, "Password expired already so launching password screen"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-interface {v5, v6, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "PasswordPolicy"

    const-string/jumbo v7, "forceStopPackage failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$900(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto :goto_3

    :cond_8
    :goto_1
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In grace period or failed to get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    :cond_a
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
