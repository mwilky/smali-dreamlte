.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;->f$0:Lcom/android/server/am/SideScreenManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;->f$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-static {v0}, Lcom/android/server/am/SideScreenManagerService;->lambda$hideSideScreen$2(Lcom/android/server/am/SideScreenManagerService;)V

    return-void
.end method
