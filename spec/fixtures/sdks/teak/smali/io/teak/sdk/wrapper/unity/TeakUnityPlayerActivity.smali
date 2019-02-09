.class public Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-static {p0}, Lio/teak/sdk/Teak;->onCreate(Landroid/app/Activity;)V

    .line 15
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->initialize()V

    .line 17
    return-void
.end method
