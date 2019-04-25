.class public Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicyController.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

.field private mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->initialize()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .locals 2

    const-class v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 2

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v1, "activateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    return-void
.end method

.method public clearCocktailWindowType(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCocktailWindowType: currentWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callingPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 2

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v1, "deactivateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 6

    const-string v0, "[CocktailBarStatePolicy] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindowType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getWindowType()I

    move-result v0

    return v0
.end method

.method public notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCocktailBarState: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " background = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " showtimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " activate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changeFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCocktailBarStateExceptCallingPackage(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Ljava/lang/String;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCocktailBarStateExceptCallingPackage: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changeFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    if-eqz p2, :cond_1

    iget-object v3, v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCocktailBarStateToBinder: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " background = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " showtimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    iget-object v3, v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerListenerCallback : already registered"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListenerCallback : exception in linkToDeath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    iget-object v3, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->notifyStateToBinder(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerListenerCallback : cannot find the matched listener"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePosition(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updatePosition(I)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    return-void
.end method

.method public updateWindowType(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: currentWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " windowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " P="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-ne v0, p2, :cond_2

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: current window type is requested window type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
