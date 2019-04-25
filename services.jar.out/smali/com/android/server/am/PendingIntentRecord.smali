.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field sourceToken:Landroid/os/IBinder;

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->removePendingIntentRecordLocked(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    if-eqz v0, :cond_7

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    if-nez p7, :cond_3

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->sourceToken:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v6

    if-nez p12, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8

    :goto_0
    const/4 v9, 0x0

    if-ne v6, v3, :cond_1

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8, v6}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v9, 0x1

    :cond_1
    iget-object v10, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v10

    if-ne v10, v4, :cond_2

    const/4 v4, -0x1

    if-eq v5, v4, :cond_2

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v10

    if-ne v10, v4, :cond_2

    invoke-virtual {v8, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v9, 0x1

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    :cond_3
    move-object/from16 v15, p12

    :goto_1
    const/4 v0, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_4
    if-eqz v15, :cond_5

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_5
    iget-object v14, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v4, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v4, :cond_1d

    iput-boolean v0, v1, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v35, p3

    move/from16 v36, p10

    move/from16 v37, p11

    :goto_2
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_1c

    :cond_6
    :goto_3
    :try_start_2
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v4, :cond_7

    :try_start_3
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_7
    :try_start_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    :goto_4
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    move/from16 v34, v5

    if-nez v34, :cond_b

    if-eqz v2, :cond_a

    :try_start_5
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v5

    and-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_9

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v7

    goto :goto_6

    :cond_9
    move-object/from16 v5, p3

    :goto_6
    goto :goto_7

    :cond_a
    :try_start_6
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    move/from16 v7, p10

    and-int/lit16 v7, v7, -0xc4

    and-int v8, p11, v7

    :try_start_7
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v9

    not-int v10, v7

    and-int/2addr v9, v10

    or-int/2addr v9, v8

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v35, v5

    move/from16 v36, v7

    move/from16 v37, v8

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v35, v5

    move/from16 v36, v7

    move/from16 v37, v8

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v7, p10

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    goto :goto_2

    :cond_b
    move/from16 v7, p10

    :try_start_8
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move/from16 v37, p11

    move-object/from16 v35, v5

    move/from16 v36, v7

    :goto_8
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move v12, v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v39

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-nez v5, :cond_c

    :try_start_a
    invoke-static {v15}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v5, v7

    :goto_9
    move-object/from16 v45, v5

    goto :goto_a

    :catchall_3
    move-exception v0

    goto/16 :goto_2

    :cond_c
    :try_start_b
    invoke-static {v15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    goto :goto_9

    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-wide v10, v7

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v5, :cond_11

    :try_start_c
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v9, p4

    :try_start_d
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_12

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v8

    if-nez v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v13, 0x40

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v13, "pendingintent:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v13, ":"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_d
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_b

    :cond_e
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_b
    iget-object v13, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v38, v13

    move/from16 v40, v12

    move/from16 v41, v6

    invoke-virtual/range {v38 .. v44}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    goto :goto_c

    :cond_10
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not doing whitelist "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": caller state="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v9, p4

    goto/16 :goto_2

    :cond_11
    move-object/from16 v9, p4

    :cond_12
    :goto_c
    if-eqz p5, :cond_13

    move v5, v0

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    :goto_d
    move/from16 v38, v5

    :try_start_e
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_14

    :try_start_f
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move v5, v6

    :cond_14
    move/from16 v40, v5

    const/16 v41, 0x0

    :try_start_10
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    packed-switch v5, :pswitch_data_0

    move-object/from16 v48, v4

    move-wide/from16 v46, v10

    move/from16 v18, v12

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    goto/16 :goto_17

    :pswitch_0
    :try_start_11
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v7, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v6, v3, :cond_15

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object/from16 v6, p13

    move-object v8, v4

    move-object/from16 v9, v35

    move-wide/from16 v46, v10

    move v10, v0

    move-object v11, v3

    move v3, v12

    move/from16 v12, v40

    :try_start_12
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_11

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    move-wide/from16 v46, v10

    move v3, v12

    :goto_f
    const/16 v41, -0x60

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move/from16 v11, v41

    const/16 v2, -0x60

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move-wide/from16 v46, v10

    move v3, v12

    :goto_10
    :try_start_13
    const-string v5, "ActivityManager"

    const-string v6, "Unable to send startService intent"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    nop

    :cond_16
    :goto_12
    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    goto/16 :goto_17

    :pswitch_1
    move-wide/from16 v46, v10

    move v3, v12

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTIVITY intent in key u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " act="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v6}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cmp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "} from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v6, -0x1

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v5, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object v5, v0

    move/from16 v10, p1

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_12

    :pswitch_2
    move-wide/from16 v46, v10

    move v3, v12

    :try_start_14
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v5, :cond_17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFromPendingIntent(Z)V

    :cond_17
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v5, :cond_19

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    if-le v5, v0, :cond_19

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Landroid/content/Intent;

    move-object v13, v5

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v12, v5

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v5, :cond_18

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    array-length v5, v13

    sub-int/2addr v5, v0

    aput-object v4, v13, v5

    array-length v5, v12

    sub-int/2addr v5, v0

    aput-object v35, v12, v5

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v0, 0x0

    move-object v8, v13

    move-object v9, v12

    move-object/from16 v10, p7

    move-object/from16 v11, v45

    move-object/from16 v16, v12

    move/from16 v12, v40

    move-object/from16 v17, v13

    const/16 v2, -0x60

    move v13, v0

    :try_start_15
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    goto :goto_13

    :cond_19
    const/16 v2, -0x60

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v18

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v31, 0x0

    const-string v32, "PendingIntentRecord"

    const/16 v33, 0x0

    move/from16 v19, v0

    move/from16 v20, v39

    move/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v4

    move-object/from16 v24, v35

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v29, v45

    move/from16 v30, v40

    invoke-virtual/range {v18 .. v33}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_13
    move v5, v0

    :try_start_16
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTIVITY intent in key u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " act="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v7}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cmp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "} from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    nop

    move/from16 v18, v3

    move-object/from16 v48, v4

    move v11, v5

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_18

    :catch_4
    move-exception v0

    move/from16 v41, v5

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    const/16 v2, -0x60

    :goto_14
    :try_start_17
    const-string v5, "ActivityManager"

    const-string v6, "Unable to send startActivity intent"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    nop

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto :goto_17

    :pswitch_3
    move-wide/from16 v46, v10

    move v3, v12

    const/16 v2, -0x60

    const/4 v7, 0x0

    :try_start_18
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_1a

    goto :goto_15

    :cond_1a
    move v0, v7

    :goto_15
    const/16 v16, 0x0

    move/from16 v18, v3

    move-object v3, v5

    move-object v13, v4

    move-object/from16 v4, p13

    move-object v5, v6

    move v6, v8

    move-object v7, v13

    move-object/from16 v8, v35

    move-object/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v48, v13

    move-object/from16 v13, p6

    move-object/from16 v19, v14

    move-object v14, v15

    move-object/from16 v20, v15

    move v15, v0

    move/from16 v17, v40

    :try_start_19
    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-nez v0, :cond_1b

    const/16 v38, 0x0

    :cond_1b
    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_16

    :catch_8
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v48, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    :goto_16
    :try_start_1a
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    nop

    :goto_17
    move/from16 v11, v41

    :goto_18
    if-eqz v38, :cond_1c

    if-eq v11, v2, :cond_1c

    :try_start_1b
    new-instance v4, Landroid/content/Intent;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    move-object/from16 v2, v48

    :try_start_1c
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v3, p5

    invoke-interface/range {v3 .. v10}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    goto :goto_1a

    :catch_9
    move-exception v0

    goto :goto_19

    :catch_a
    move-exception v0

    move-object/from16 v2, v48

    :goto_19
    goto :goto_1a

    :cond_1c
    move-object/from16 v2, v48

    :goto_1a
    move-wide/from16 v3, v46

    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    :catchall_5
    move-exception v0

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_1c

    :catchall_6
    move-exception v0

    goto :goto_1b

    :cond_1d
    move/from16 v7, p10

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    const/16 v2, -0x60

    :try_start_1e
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTIVITY intent in key u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " act="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cmp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} is canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_7
    move-exception v0

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    goto :goto_1c

    :catchall_8
    move-exception v0

    move/from16 v7, p10

    :goto_1b
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object/from16 v35, p3

    move/from16 v37, p11

    move/from16 v36, v7

    :goto_1c
    :try_start_1f
    monitor-exit v19
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_1c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_1
    return-void
.end method
