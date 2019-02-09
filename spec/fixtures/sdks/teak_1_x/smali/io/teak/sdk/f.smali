.class final Lio/teak/sdk/f;
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
    .line 544
    iput-object p1, p0, Lio/teak/sdk/f;->a:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/f;Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 544
    .line 1547
    iget-object v0, p0, Lio/teak/sdk/f;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 544
    return-void
.end method
