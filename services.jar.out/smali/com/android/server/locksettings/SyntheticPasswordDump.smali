.class public Lcom/android/server/locksettings/SyntheticPasswordDump;
.super Ljava/lang/Object;
.source "SyntheticPasswordDump.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordDump"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordDump.SDP"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "SyntheticPasswordDump.SDP"

    const-string v1, "Dump not supported for this device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
