.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$OlBeA2-9nXQEXSepMTJ88X5FYqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$OlBeA2-9nXQEXSepMTJ88X5FYqQ;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$OlBeA2-9nXQEXSepMTJ88X5FYqQ;->f$0:Landroid/os/Bundle;

    check-cast p1, Lcom/android/server/SdpManagerService$SdpManagerProxy;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSyntheticPasswordFullMigrationAsync$20(Landroid/os/Bundle;Lcom/android/server/SdpManagerService$SdpManagerProxy;)V

    return-void
.end method
