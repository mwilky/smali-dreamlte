.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/content/om/ISamsungOverlayCallback;

.field private final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iput-object p2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$2:I

    iput-object p4, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$4:Landroid/content/om/ISamsungOverlayCallback;

    iput-boolean p6, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iget-object v1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$2:I

    iget-object v3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$4:Landroid/content/om/ISamsungOverlayCallback;

    iget-boolean v5, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->lambda$onOverlaysChanged$1(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V

    return-void
.end method
