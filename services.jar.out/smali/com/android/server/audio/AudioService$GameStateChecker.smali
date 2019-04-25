.class Lcom/android/server/audio/AudioService$GameStateChecker;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameStateChecker"
.end annotation


# static fields
.field private static final GAME:I = 0x1


# instance fields
.field private mGameIsForeground:Z

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$GameStateChecker;->init()V

    return-void
.end method

.method static synthetic access$19002(Lcom/android/server/audio/AudioService$GameStateChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    return p1
.end method

.method private init()V
    .locals 3

    const-string/jumbo v0, "gamemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_0

    const-string v0, "AudioService"

    const-string/jumbo v1, "game manager load failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    new-instance v1, Lcom/android/server/audio/AudioService$GameStateChecker$1;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$GameStateChecker$1;-><init>(Lcom/android/server/audio/AudioService$GameStateChecker;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/game/IGameManagerService;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioService"

    const-string/jumbo v2, "failed get game state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    move-exception v0

    const-string v1, "AudioService"

    const-string/jumbo v2, "fail link to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "AudioService"

    const-string v1, "Gamemanager is died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    return-void
.end method

.method public isGameForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameIsForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameIsForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGameManagerService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$GameStateChecker;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
