.class public final synthetic Lcom/android/systemui/statusbar/phone/forceimmersive/view/-$$Lambda$GestureDetectingView$aPs56Q0871NKaIApWZ5XK7vCfcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/-$$Lambda$GestureDetectingView$aPs56Q0871NKaIApWZ5XK7vCfcs;->f$0:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/-$$Lambda$GestureDetectingView$aPs56Q0871NKaIApWZ5XK7vCfcs;->f$0:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->lambda$update$0(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
