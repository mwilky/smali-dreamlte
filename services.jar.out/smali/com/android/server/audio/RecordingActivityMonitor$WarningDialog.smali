.class Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialog"
.end annotation


# static fields
.field private static final WARNING_DIALOG_PERIOD_MS:I = 0x2710


# instance fields
.field private mCurrentUid:I

.field private mFailedUid:I

.field private mSendingTime:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mFailedUid:I

    iput p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mCurrentUid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mSendingTime:J

    return-void
.end method


# virtual methods
.method public checkDuplicate(Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mFailedUid:I

    iget v2, p1, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mFailedUid:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mCurrentUid:I

    iget v2, p1, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mCurrentUid:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mSendingTime:J

    iget-wide v3, p1, Lcom/android/server/audio/RecordingActivityMonitor$WarningDialog;->mSendingTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method
