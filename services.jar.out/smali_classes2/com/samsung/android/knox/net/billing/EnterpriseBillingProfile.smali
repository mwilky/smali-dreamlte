.class public Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
.super Ljava/lang/Object;
.source "EnterpriseBillingProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_REGEX_FOR_PROFILE_NAME:Ljava/lang/String; = "[a-zA-Z_0-9]+"


# instance fields
.field private final apns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation
.end field

.field private final profileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addApnToProfile(Lcom/samsung/android/knox/net/billing/EnterpriseApn;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addApnsToProfile(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApnsFromProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public isProfileNameValid()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    const-string v2, "[a-zA-Z_0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isProfileValid()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;->apns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
