.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent recevied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Unable to remove user keys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/fips_tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Unable to remove user keys from FipsTimaKeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeystoreReceiver: Intent.ACTION_USER_ADDED received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$700(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string v4, "defaultpackage"

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$800(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Error enabling TimaKeyStore on container creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v2, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ACTION_DEVICE_OWNER_CHANGED received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$700(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string v4, "defaultpackage"

    invoke-static {v2, v1, v4, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$800(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error enabling TimaKeyStore on container creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
