page 11769 "VAT Periods CZL"
{
    ApplicationArea = Basic, Suite;
    Caption = 'VAT Periods';
    PageType = List;
    RefreshOnActivate = true;
    SourceTable = "VAT Period CZL";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the starting date for the VAT period.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies name of VAT periods.';
                }
                field("New VAT Year"; Rec."New VAT Year")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies if the period marks the beginning of a new VAT year.';
                }
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies whether VAT entries are closed and applied in period.';
                }
            }
        }
        area(factboxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Calc. and Post VAT Settlement")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Calculate and Post VAT Settlement';
                Image = CalculateSalesTax;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                RunObject = Report "Calc. and Post VAT Settl. CZL";
                ToolTip = 'This batch closes open VAT entries and transfers purchase and sales VAT amounts to the VAT settlement account.';
                Ellipsis = true;
                ShortcutKey = F9;
            }
        }
        area(Navigation)
        {
            action("VAT Statement")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'VAT Statements';
                Image = VATStatement;
                RunObject = Page "VAT Statement";
                ToolTip = 'Show the VAT statements.';
            }
            action("VIES Declarations")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'VIES Declarations';
                Image = VATExemption;
                RunObject = Page "VIES Declarations CZL";
                ToolTip = 'Show the VIES Declarations.';
            }
            action("VAT Control Report")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'VAT Control Report';
                Image = VATLedger;
                RunObject = Page "VAT Ctrl. Report List CZL";
                ToolTip = 'Show the VAT Control Reports.';
            }
        }
        area(Creation)
        {
            action("Create Periods")
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Create Periods';
                Ellipsis = true;
                Image = Period;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                RunObject = Report "Create VAT Period CZL";
                ToolTip = 'This batch job automatically creates VAT periods.';
            }
        }
        area(Reporting)
        {
            action("G/L VAT Reconciliation CZL")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'G/L VAT Reconciliation';
                Image = PrintReport;
                RunObject = Report "G/L VAT Reconciliation CZL";
                ToolTip = 'This report compares general ledger entries by filtering data either by the posting date or the VAT date.';
            }
        }
    }
}
