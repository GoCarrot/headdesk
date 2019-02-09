.class final Lio/teak/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/app/Notification;


# direct methods
.method constructor <init>(Landroid/app/Notification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 548
    iput-object p1, p0, Lio/teak/sdk/g;->a:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/g;Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 548
    .line 1551
    iget-object v0, p0, Lio/teak/sdk/g;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 548
    return-void
.end method
