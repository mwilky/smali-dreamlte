.class public Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;
.super Ljava/lang/Object;
.source "DesktopModeManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DesktopModeManagerWrapper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    return-void
.end method

.method static synthetic lambda$registerModeChangedListener$0(Ljava/lang/Runnable;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "DesktopModeManagerWrapper"

    const-string v2, "dispose() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isDesktopModeDualView()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v2, "DesktopModeManagerWrapper"

    const-string v3, "isDesktopModeDualView() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public registerModeChangedListener(Ljava/lang/Runnable;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v2, "DesktopModeManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mContext.getSystemService() : exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "DesktopModeManagerWrapper"

    const-string/jumbo v2, "registerModeChangedListener() : mDesktopModeManager is NULL!"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->dispose()V

    :cond_1
    new-instance v0, Lcom/android/systemui/globalactions/util/-$$Lambda$DesktopModeManagerWrapper$n0Ir6R_tGzngpLXjn4VGNTH1O6A;

    invoke-direct {v0, p1}, Lcom/android/systemui/globalactions/util/-$$Lambda$DesktopModeManagerWrapper$n0Ir6R_tGzngpLXjn4VGNTH1O6A;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    return-void
.end method
