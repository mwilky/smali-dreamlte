.class public Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapper.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getMobileDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method
