.class Landroid/support/v4/media/MediaSessionService2ImplBase;
.super Ljava/lang/Object;
.source "MediaSessionService2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionService2$SupportLibraryImpl;


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionService2ImplBase;->mLock:Ljava/lang/Object;

    return-void
.end method
