.class Lcom/android/systemui/shared/recents/model/TaskLockInfo$1;
.super Ljava/lang/Object;
.source "TaskLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/TaskLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/shared/recents/model/TaskLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/recents/model/TaskLockInfo;
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/recents/model/TaskLockInfo;-><init>(Landroid/os/Parcel;Lcom/android/systemui/shared/recents/model/TaskLockInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/systemui/shared/recents/model/TaskLockInfo;
    .locals 1

    new-array v0, p1, [Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskLockInfo$1;->newArray(I)[Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    move-result-object p1

    return-object p1
.end method
