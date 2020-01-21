pageextension 50105 CurrencyListExt extends Currencies
{
    actions
    {
        // Add changes to page actions here
        addafter("Exch. &Rates")
        {
            action(GetExchangeRate)
            {
                CaptionML = ENU = 'Get Exchange Rate';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    GetExchangeRate: Codeunit GetExchangeRate;
                begin
                    GetExchangeRate.GetExchangeRate(Rec);
                end;
            }
        }
    }
}