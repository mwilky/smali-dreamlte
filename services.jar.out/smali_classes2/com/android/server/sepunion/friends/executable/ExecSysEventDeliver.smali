.class public Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;
.super Ljava/lang/Object;
.source "ExecSysEventDeliver.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final EVENT_BOOT_COMPLETED:I = 0x3e8

.field public static final EVENT_CLEANUP_USER:I = 0x3ed

.field public static final EVENT_START_USER:I = 0x3e9

.field public static final EVENT_STOP_USER:I = 0x3ec

.field public static final EVENT_SWITCH_USER:I = 0x3eb

.field public static final EVENT_UNLOCK_USER:I = 0x3ea


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createBundle(II)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt1"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->sysEvent(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_1
    :goto_1
    throw v2

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_3
    return-object v1
.end method

.method public executeOnSameThread(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
