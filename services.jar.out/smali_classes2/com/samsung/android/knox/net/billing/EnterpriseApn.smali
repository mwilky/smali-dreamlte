.class public Lcom/samsung/android/knox/net/billing/EnterpriseApn;
.super Ljava/lang/Object;
.source "EnterpriseApn.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apn:Ljava/lang/String;

.field public final mcc:Ljava/lang/String;

.field public final mnc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/billing/EnterpriseApn$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/billing/EnterpriseApn$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v5, v1, v0

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    aget-char v5, v0, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-char v2, v0, v3

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v4

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
