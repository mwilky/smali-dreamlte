.class Lcom/android/server/enterprise/application/ApplicationPolicy$13;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reapplyRuntimePermissions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ApplicationPolicy"

    const-string v1, "User removed"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->val$userId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3900(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->val$userId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    const-string v1, "adminUid"

    const-string/jumbo v2, "packageName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v3, "ApplicationRuntimePermissions"

    iget v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->val$userId:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "packageName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$13;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$4000(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
