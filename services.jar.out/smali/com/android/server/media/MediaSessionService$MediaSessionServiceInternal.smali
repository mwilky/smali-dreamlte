.class public final Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaSessionServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaButtonSessionPackage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$6000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaKeyEventReceiver()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeLongPressReceiver()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public setMediaKeyEventReceiver(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$1702(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolumeLongPressReceiver(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$1802(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMultiSoundInfo(IZ)V
    .locals 3

    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiSoundInfo device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->access$8102(Lcom/android/server/media/MediaSessionService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p2}, Lcom/android/server/media/MediaSessionService;->access$3402(Lcom/android/server/media/MediaSessionService;Z)Z

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/media/MediaSessionStack;->updateMultiSoundInfo(Z)V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$8200(Lcom/android/server/media/MediaSessionService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    return-void
.end method
