.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowContainerController;

.field private final synthetic f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowContainerController;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$0:Lcom/android/server/wm/AppWindowContainerController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$1:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$Chz7wUFveReZPIFyu9PBRbgnnYI;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowContainerController;->lambda$removeStartingWindow$2(Lcom/android/server/wm/AppWindowContainerController;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;Ljava/lang/String;I)V

    return-void
.end method
