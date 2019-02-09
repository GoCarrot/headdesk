.class public final Lio/teak/sdk/c/g;
.super Lio/teak/sdk/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Notification;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    const-string v0, "NotificationReDisplayEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method
