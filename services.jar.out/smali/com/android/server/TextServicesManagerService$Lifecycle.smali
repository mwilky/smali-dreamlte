.class public final Lcom/android/server/TextServicesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/TextServicesManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/TextServicesManagerService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string/jumbo v0, "textservices"

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService;->onStopUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService;->onUnlockUser(I)V

    return-void
.end method
