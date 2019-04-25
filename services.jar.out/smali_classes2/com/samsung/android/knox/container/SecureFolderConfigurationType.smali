.class public Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "SecureFolderConfigurationType.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/SecureFolderConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SecureFolderConfigurationType"


# instance fields
.field protected mAllowClearAllNotification:Z

.field protected mAllowHomeKey:Z

.field protected mAllowSettingsChanges:Z

.field protected mAllowStatusBarExpansion:Z

.field protected mHideSystemBar:Z

.field protected mWipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method


# virtual methods
.method public allowClearAllNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    return-void
.end method

.method public allowHomeKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    return-void
.end method

.method public allowSettingsChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    return-void
.end method

.method public allowStatusBarExpansion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    return-void
.end method

.method public bridge synthetic clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move-result-object p1

    return-object p1
.end method

.method public clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->allowSettingsChanges(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->allowStatusBarExpansion(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->allowHomeKey(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->allowClearAllNotification(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->setHideSystemBar(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->setWipeRecentTasks(Z)V

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "SecureFolderConfigurationType"

    const-string v1, "clone(): name is either null or empty, hence returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "SecureFolderConfigurationType"

    const-string v1, "COM config dump START:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowSettingsChanges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowStatusBarExpansion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowHomeKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowClearAllNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHideSystemBar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecureFolderConfigurationType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWipeRecentTasks : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const-string v0, "SecureFolderConfigurationType"

    const-string v1, "COM config dump END."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isClearAllNotificationAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    return v0
.end method

.method public isHideSystemBarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    return v0
.end method

.method public isHomeKeyAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    return v0
.end method

.method public isSettingChangesAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    return v0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    return v0
.end method

.method public isWipeRecentTasksEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return v0
.end method

.method public setHideSystemBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    return-void
.end method

.method public setWipeRecentTasks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
