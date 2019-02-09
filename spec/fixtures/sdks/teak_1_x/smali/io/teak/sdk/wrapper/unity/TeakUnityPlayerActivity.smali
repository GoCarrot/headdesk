.class public Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-static {p1, p2, p3}, Lio/teak/sdk/Teak;->onActivityResult(IILandroid/content/Intent;)V

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-static {p0}, Lio/teak/sdk/Teak;->onCreate(Landroid/app/Activity;)V

    .line 28
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->initialize()V

    .line 30
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 35
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
