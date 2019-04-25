.class Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;
.super Ljava/lang/Object;
.source "DisplayPolicyLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDefaultDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isHomeOrRecentsActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    nop

    const-string v2, "com.android.systemui.recents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    nop

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 7

    iget v0, p6, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    const-string v6, "com.samsung.android.multidisplay.primarydisplay"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I

    move-result v0

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->primaryDisplayName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I

    move-result v0

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    :cond_3
    if-ne v0, v2, :cond_4

    if-eqz p3, :cond_4

    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->isHomeOrRecentsActivity(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/DisplayPolicyLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :cond_4
    invoke-virtual {p7, v0, v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setPreferredDisplayIdIfPossible(II)Z

    :cond_5
    return v1
.end method
