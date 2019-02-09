.class public Lio/teak/sdk/wrapper/unity/TeakUnityPlayerNativeActivity;
.super Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    const-string v0, "Teak"

    const-string v1, "TeakUnityPlayerNativeActivity has been deprecated, please update your AndroidManifest to use TeakUnityPlayerActivity instead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-super {p0, p1}, Lio/teak/sdk/wrapper/unity/TeakUnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
