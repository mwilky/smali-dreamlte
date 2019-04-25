.class public Lcom/samsung/android/knox/container/ContainerCreationParams;
.super Ljava/lang/Object;
.source "ContainerCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCK_TYPE_ENTERPRISEIDENTITY:I = 0x8

.field public static final LOCK_TYPE_FINGER_PRINT:I = 0x1

.field public static final LOCK_TYPE_IRIS:I = 0x9

.field public static final LOCK_TYPE_PASSWORD:I = 0x0

.field public static final LOCK_TYPE_PATTERN:I = 0x3

.field public static final LOCK_TYPE_PIN:I = 0x2

.field public static final STATE_SETUP_POST_CREATE:I = 0x1

.field public static final STATE_SETUP_PROGRESS:I = 0x0

.field public static final STATE_WIZARD_EXIT_CLEAN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContainerCreationParams"


# instance fields
.field private isMigrationFlow:Z

.field private mAdminParam:Ljava/lang/String;

.field private mAdminRemovable:Z

.field private mAdminUid:I

.field private mBackupPin:Ljava/lang/String;

.field private mBiometricsInfo:I

.field private mConfigurationName:Ljava/lang/String;

.field private mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

.field private mContainerId:I

.field private mCreatorUid:I

.field private mFeatureType:Ljava/lang/String;

.field private mFingerprintPlus:Z

.field private mFlags:I

.field private mIrisPlus:Z

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPackagePoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mRequestId:I

.field private mRequestState:I

.field private mResetPwdKey:Ljava/lang/String;

.field private mRestoreSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_a

    move v1, v2

    nop

    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method

.method private deserializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v6, 0x1

    move v7, v6

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    instance-of v8, v7, [B

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, [B

    array-length v9, v8

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestId(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setLockType(I)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setFingerprintPlus(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIrisPlus(Z)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBiometricsInfo(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBackupPin(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRestoreSelection(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIsMigrationFlow(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 3

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerCreationParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdminUid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminRemovable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return v0
.end method

.method public getAdminUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return v0
.end method

.method public getBackupPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getBiometricsInfo()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return v0
.end method

.method public getConfigurationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return v0
.end method

.method public getFeatureType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprintPlus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return v0
.end method

.method public getIrisPlus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return v0
.end method

.method public getIsMigrationFlow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagePoliciesMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return v0
.end method

.method public getRequestState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return v0
.end method

.method public getResetPasswordKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreSelection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return v0
.end method

.method public setAdminParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-void
.end method

.method public setAdminRemovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return-void
.end method

.method public setAdminUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return-void
.end method

.method public setBackupPin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-void
.end method

.method public setBiometricsInfo(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return-void
.end method

.method public setConfigurationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-void
.end method

.method public setConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-void
.end method

.method public setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return-void
.end method

.method public setCreatorUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return-void
.end method

.method public setFeatureType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-void
.end method

.method public setFingerprintPlus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return-void
.end method

.method public setIrisPlus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return-void
.end method

.method public setIsMigrationFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return-void
.end method

.method public setLockType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPackagePoliciesMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return-void
.end method

.method public setRequestState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return-void
.end method

.method public setResetPasswordKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-void
.end method

.method public setRestoreSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->serializePackagePolicies(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method
