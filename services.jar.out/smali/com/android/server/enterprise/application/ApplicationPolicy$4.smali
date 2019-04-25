.class Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->getSendingUserId()I

    move-result v2

    if-eqz v0, :cond_c

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, v9, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v11, "applicationUninstallationCount"

    invoke-static {v10, v8, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x2

    invoke-static {v10, v0, v8, v11, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v11, 0x1000000

    invoke-static {v10, v0, v8, v11, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    const-string v10, "ApplicationPolicy"

    const-string v11, "App removed, clear masks"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    :cond_3
    goto/16 :goto_2

    :cond_4
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v8, v7, v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v9, "applicationInstallationCount"

    invoke-static {v8, v6, v0, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "ApplicationPolicy"

    const-string v9, "App install count incremented"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    :cond_8
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    :cond_9
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "com.sec.enterprise.knox.express"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2400(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    :cond_b
    :goto_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2500(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_c
    :goto_3
    nop

    :goto_4
    return-void
.end method
