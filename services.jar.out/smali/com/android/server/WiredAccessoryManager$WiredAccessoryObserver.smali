.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$700(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v4, "h2w"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x20

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v6, "usb_audio"

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v6, "ch_hdmi_audio"

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v2

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v5, "hdmi_audio"

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v2

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v5, "hdmi"

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    move-object v1, v2

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ch_hdmi_audio"

    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    and-int/lit16 v3, p3, 0xff

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "This is for DVI and No-Speaker HDMI Device"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    if-ne p3, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move p3, v0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method init()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x400

    new-array v2, v1, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not found while attempting to determine initial switch state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_3
    move v0, v3

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVPATH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    goto :goto_3

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Headset UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
