.class Lcom/android/server/am/InitialLaunchParamsModifier;
.super Ljava/lang/Object;
.source "InitialLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/InitialLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget v2, p3, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p3, :cond_2

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p7, v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setPreferredDisplayIdIfPossible(II)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/InitialLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/am/InitialLaunchParamsModifier;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    invoke-virtual {p7, v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setPreferredDisplayIdIfPossible(II)Z

    :cond_3
    const/4 v0, 0x2

    return v0
.end method
