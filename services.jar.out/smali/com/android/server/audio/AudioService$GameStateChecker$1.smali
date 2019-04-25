.class Lcom/android/server/audio/AudioService$GameStateChecker$1;
.super Lcom/samsung/android/game/IGameManagerCallback$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService$GameStateChecker;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService$GameStateChecker;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$GameStateChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$GameStateChecker$1;->this$0:Lcom/android/server/audio/AudioService$GameStateChecker;

    invoke-direct {p0}, Lcom/samsung/android/game/IGameManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGamePause(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioService"

    const-string/jumbo v1, "onGamePause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker$1;->this$0:Lcom/android/server/audio/AudioService$GameStateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$GameStateChecker;->access$19002(Lcom/android/server/audio/AudioService$GameStateChecker;Z)Z

    return-void
.end method

.method public onGameResume(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioService"

    const-string/jumbo v1, "onGameResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$GameStateChecker$1;->this$0:Lcom/android/server/audio/AudioService$GameStateChecker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$GameStateChecker;->access$19002(Lcom/android/server/audio/AudioService$GameStateChecker;Z)Z

    return-void
.end method

.method public onModeChanged(I)V
    .locals 0

    return-void
.end method
