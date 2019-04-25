.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/SdpManagerService$StateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SdpManagerService$StateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;->f$0:Lcom/android/server/SdpManagerService$StateListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$QteHBy3qucJ_SWng-SB6vCaupbk;->f$0:Lcom/android/server/SdpManagerService$StateListener;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$StateListener;->lambda$new$0(Lcom/android/server/SdpManagerService$StateListener;Landroid/os/IBinder;)V

    return-void
.end method
