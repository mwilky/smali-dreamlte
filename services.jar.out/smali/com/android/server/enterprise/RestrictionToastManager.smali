.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_ID:I = 0x1

.field private static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field private static final MSG_SHOW_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field private static mContext:Landroid/content/Context;

.field private static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RestrictionToastManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    return-void
.end method

.method public static show(I)V
    .locals 3

    if-ltz p0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RestrictionToastManager"

    const-string v2, "Resource Id not found: will not display any restriction message toast"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;->sendMessage(Landroid/os/Message;)Z

    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "RestrictionToastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added message to recently displayed queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const-wide/16 v5, 0xdac

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method
