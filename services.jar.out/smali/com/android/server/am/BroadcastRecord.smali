.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerInstantApp:Z

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchTime:J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field receiversDispatchTime:[J

.field receiversFinishTime:[J

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    move-object/from16 v3, p12

    invoke-direct/range {p0 .. p0}, Landroid/os/Binder;-><init>()V

    if-eqz v1, :cond_4

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move/from16 v7, p5

    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move/from16 v8, p6

    iput v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v9, p7

    iput-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v12, -0x1

    if-lt v2, v12, :cond_0

    const/16 v13, 0x4f

    if-ge v2, v13, :cond_0

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    goto :goto_0

    :cond_0
    const-string v13, "BroadcastRecord"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Construct BroadcastRecord with bad appOp #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    :goto_0
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    new-array v14, v14, [I

    iput-object v14, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 v15, p14

    iput v15, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v13, p15

    iput-object v13, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v3, :cond_2

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v1, v16

    nop

    :cond_2
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    if-eqz v3, :cond_3

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    return-void

    :cond_4
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v13, p15

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t construct with a null intent"

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    :cond_1
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_5

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_5

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v6, :cond_7

    if-nez p4, :cond_6

    return v3

    :cond_6
    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v10, v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v2

    invoke-static {v7, v8, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    array-length v10, v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v2

    invoke-static {v7, v8, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    array-length v10, v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v2

    invoke-static {v7, v8, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v2, v7, :cond_7

    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " to user "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  targetComp: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "caller="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_3

    :cond_2
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requiredPermissions="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  appOp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "options="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "enqueueClockTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " dispatchClockTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "dispatchTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v4, v6, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " since enq)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const-string v0, " finishTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " since disp)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, " receiverTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v6, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v2, v3, v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "anrCount="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_8

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v0, v1, :cond_8

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultTo="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " resultCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, " resultData=(has data)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, " resultData="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    :goto_2
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultExtras=(has extras)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v0, :cond_c

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_c

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v0, :cond_c

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultAbort="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " ordered="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " sticky="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialSticky="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_d
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v0, :cond_e

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v0, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "nextReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " receiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curFilter="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_11
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curApp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curComponent="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_12
    const-string v0, "--"

    :goto_3
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curSourceDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v0, :cond_14

    const-string v0, " (?)"

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v0, " (WAITING_SERVICES)"

    goto :goto_4

    :pswitch_1
    const-string v0, " (CALL_DONE_RECEIVE)"

    goto :goto_4

    :pswitch_2
    const-string v0, " (CALL_IN_RECEIVE)"

    goto :goto_4

    :pswitch_3
    const-string v0, " (APP_RECEIVE)"

    :goto_4
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    :goto_5
    move v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v7}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v15, v0

    const/4 v0, 0x0

    :goto_6
    move v4, v0

    if-ge v4, v12, :cond_18

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    const-string v0, "???????"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_4
    const-string v0, "Timeout"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_5
    const-string v0, "Skipped"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_6
    const-string v0, "Deliver"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_7
    const-string v0, "Pending"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    const-string v0, " #"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    instance-of v0, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_16

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    move-object v1, v6

    move-object v2, v7

    move v3, v4

    move/from16 v16, v4

    move-object v11, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SamsungActivityManagerService;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v0, v7, v14}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_8

    :cond_16
    move/from16 v16, v4

    move-object v11, v5

    instance-of v0, v11, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_17

    const-string v0, "(manifest)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    move-object v1, v6

    move-object v2, v7

    move/from16 v3, v16

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SamsungActivityManagerService;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    move-object v0, v11

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v14, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v0, v16, 0x1

    goto/16 :goto_6

    :cond_18
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
