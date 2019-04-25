.class interface abstract Lcom/android/server/wm/SideScreenStackPositioner$Factory;
.super Ljava/lang/Object;
.source "SideScreenStackPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenStackPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public createFixedStackPositioner(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/SideScreenStackPositioner;
    .locals 1

    new-instance v0, Lcom/android/server/wm/SideScreenFixedStackPositioner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/SideScreenFixedStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    return-object v0
.end method

.method public createSlideOverPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenStackPositioner;
    .locals 1

    new-instance v0, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SideScreenSlideOverStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method
