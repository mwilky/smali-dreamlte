.class final Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onFinishPackageChangesInternal()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    move-object v8, v0

    move v0, v7

    :goto_0
    if-ge v0, v4, :cond_8

    iget-object v9, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v8, v9

    :cond_2
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v12}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->access$2600(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    :cond_3
    if-eq v11, v6, :cond_4

    if-ne v11, v5, :cond_6

    :cond_4
    const-string v12, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onSomePackagesChanged : Input method uninstalled, disabling: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "last_used_input_method"

    iget-object v14, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v14, v14, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "last_used_input_method"

    const-string v15, ""

    iget-object v5, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-static {v13, v14, v15, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_5
    iget-object v5, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13, v7}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_7
    move-object v8, v0

    :cond_8
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v5, 0x0

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v0

    if-eq v9, v6, :cond_9

    const/4 v0, 0x3

    if-ne v9, v0, :cond_a

    :cond_9
    const/4 v0, 0x0

    move-object v6, v0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$2700(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v11, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    invoke-interface {v0, v10, v7, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    if-nez v6, :cond_a

    :try_start_2
    const-string v0, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current input method removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget v11, v11, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-static {v0, v10, v7, v11}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v0, "InputMethodManagerService"

    const-string v10, "Unsetting current input method"

    invoke-static {v0, v10}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v10, ""

    invoke-static {v0, v10}, Lcom/android/server/InputMethodManagerService;->access$2200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    :cond_a
    if-nez v8, :cond_b

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_b
    if-nez v5, :cond_c

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    :cond_c
    :goto_2
    if-eqz v5, :cond_d

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    :cond_d
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onBeginPackageChanges()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v1, :cond_4

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    array-length v6, p2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, p2, v7

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    if-nez p4, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/InputMethodManagerService;->access$2200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$2300(Lcom/android/server/InputMethodManagerService;)Z

    monitor-exit v0

    return v2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
