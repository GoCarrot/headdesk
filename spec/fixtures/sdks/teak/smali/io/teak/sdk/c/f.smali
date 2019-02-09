.class public final Lio/teak/sdk/c/f;
.super Lio/teak/sdk/o;
.source "SourceFile"


# instance fields
.field public final b:Lio/teak/sdk/TeakNotification;

.field public final c:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V
    .locals 1
    .param p1    # Lio/teak/sdk/TeakNotification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    const-string v0, "NotificationDisplayEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lio/teak/sdk/c/f;->b:Lio/teak/sdk/TeakNotification;

    .line 18
    iput-object p2, p0, Lio/teak/sdk/c/f;->c:Landroid/app/Notification;

    .line 19
    return-void
.end method
